/* @refresh reload */
import { render } from "solid-js/web";

import "./index.css";
import { Route, Router } from "@solidjs/router";
import Messages from "./pages/Messages";
import { PbProvider } from "./components/context/PbContext";
import Layout from "./components/Layout";
import Login from "./pages/Login";

const root = document.getElementById("root");

if (import.meta.env.DEV && !(root instanceof HTMLElement)) {
  throw new Error(
    "Root element not found. Did you forget to add it to your index.html? Or maybe the id attribute got misspelled?"
  );
}

render(
  () => (
    <PbProvider>
      <Router>
        <Route path="/" component={Layout}>
          <Route path="/" component={Messages} />
        </Route>

        <Route path="/login" component={Login} />
      </Router>
    </PbProvider>
  ),
  root!
);
