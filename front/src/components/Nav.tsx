import { A } from "@solidjs/router";
import { Component } from "solid-js";

const Nav: Component = () => {
  return (
    <li>
      <A href="/messages">Messages</A>
    </li>
  );
};

export default Nav;
