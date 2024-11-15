import { action, redirect } from "@solidjs/router";
import { Component } from "solid-js";
import { usePb } from "./context/PbContext";

const LoginForm: Component = () => {
  const pb = usePb();

  const login = action(async (formData: FormData) => {
    const data = {
      email: formData.get("email") as string,
      password: formData.get("password") as string,
    };

    if (!data.email || !data.password) {
      return;
    }

    await pb.admins.authWithPassword(data.email, data.password);

    if (pb.authStore.isValid) {
      throw redirect("/");
    }
  });

  return (
    <form action={login} method="post">
      <div>
        <label for="email" class="input input-bordered flex items-center gap-2">
          E-mail
          <input type="email" name="email" id="email" class="grow" />
        </label>
      </div>
      <div>
        <label
          for="password"
          class="input input-bordered flex items-center gap-2"
        >
          Password
          <input type="password" name="password" id="password" class="grow" />
        </label>
      </div>
      <div>
        <input type="submit" class="btn" value="Login" />
      </div>
    </form>
  );
};

export default LoginForm;
