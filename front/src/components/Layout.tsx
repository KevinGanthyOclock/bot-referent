import { Component, ParentProps } from "solid-js";
import { usePb } from "./context/PbContext";
import { Navigate } from "@solidjs/router";

const Layout: Component = ({ children }: ParentProps) => {
  const pb = usePb();

  if (!pb.authStore.isValid) {
    return <Navigate href="/login" />;
  }

  return <main>{children}</main>;
};

export default Layout;
