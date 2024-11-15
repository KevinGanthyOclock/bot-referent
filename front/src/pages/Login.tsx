import { Component } from "solid-js";
import LoginForm from "../components/LoginForm";

const Login: Component = () => {
  return (
    <div class="h-screen w-screen flex items-center justify-center">
      <div class="card bg-base-100 w-96 shadow-xl">
        <div class="card-body prose">
          <h1 class="mb-4">{import.meta.env.VITE_APP_NAME}</h1>
          <h2 class="mt-0">Connexion</h2>
          <LoginForm />
        </div>
      </div>
    </div>
  );
};

export default Login;
