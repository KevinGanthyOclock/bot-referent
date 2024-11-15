import { action, redirect } from "@solidjs/router";
import { Component, createSignal, Show } from "solid-js";
import { usePb } from "./context/PbContext";
import { TiTimesOutline } from "solid-icons/ti";

const LoginForm: Component = () => {
  const pb = usePb();

  const [loginError, setLoginError] = createSignal<string | null>(null);

  const login = action(async (formData: FormData) => {
    const data = {
      email: formData.get("email") as string,
      password: formData.get("password") as string,
    };

    if (!data.email || !data.password) {
      setLoginError("Veuillez remplir tous les champs");
      return;
    }

    try {
      await pb.admins.authWithPassword(data.email, data.password);
    } catch (e) {
      setLoginError("Identifiants invalides");
      return;
    }

    if (pb.authStore.isValid) {
      throw redirect("/messages");
    }
  });

  return (
    <>
      <Show when={loginError()}>
        <div role="alert" class="alert alert-error">
          <TiTimesOutline />
          <span>{loginError()}</span>
        </div>
      </Show>
      <form action={login} method="post">
        <div class="mb-4">
          <label
            for="email"
            class="input input-bordered flex items-center gap-2"
          >
            E-mail
            <input type="email" name="email" id="email" class="grow" />
          </label>
        </div>
        <div class="mb-4">
          <label
            for="password"
            class="input input-bordered flex items-center gap-2"
          >
            Password
            <input type="password" name="password" id="password" class="grow" />
          </label>
        </div>
        <div>
          <input type="submit" class="btn btn-primary" value="Login" />
        </div>
      </form>
    </>
  );
};

export default LoginForm;
