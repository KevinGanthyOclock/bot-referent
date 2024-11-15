import { Component } from "solid-js";
import Nav from "./Nav";
import { usePb } from "./context/PbContext";
import { action, redirect } from "@solidjs/router";

const Header: Component = () => {
  const pb = usePb();

  const logout = action(async () => {
    pb.authStore.clear();
    throw redirect("/login");
  });

  return (
    <header class="pb-8">
      <div class="navbar bg-base-100 shadow-lg">
        <div class="navbar-start">
          <div class="dropdown">
            <div tabindex="0" role="button" class="btn btn-ghost lg:hidden">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-5 w-5"
                fill="none"
                viewBox="0 0 24 24"
                stroke="currentColor"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M4 6h16M4 12h8m-8 6h16"
                />
              </svg>
            </div>
            <ul
              tabindex="0"
              class="menu menu-sm dropdown-content bg-base-100 rounded-box z-[1] mt-3 w-52 p-2 shadow"
            >
              <Nav />
            </ul>
          </div>
          <a class="btn btn-ghost text-xl">{import.meta.env.VITE_APP_NAME}</a>
        </div>
        <div class="navbar-center hidden lg:flex">
          <ul class="menu menu-horizontal px-1">
            <Nav />
          </ul>
        </div>
        <div class="navbar-end">
          <form action={logout} method="post">
            <input type="submit" class="btn" value="Déconnexion" />
          </form>
        </div>
      </div>
    </header>
  );
};

export default Header;
