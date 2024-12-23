import { Navigate } from "@solidjs/router";
import { Component } from "solid-js";

const NotFound: Component = () => {
  return <Navigate href="/messages" />;
};

export default NotFound;
