/* @refresh reload */
import { render } from "solid-js/web";

import "./index.css";
import { Route, Router } from "@solidjs/router";
import { PbProvider } from "./components/context/PbContext";
import Layout from "./components/Layout";
import Login from "./pages/Login";
import MessagesList from "./pages/messages/MessagesList";
import MessageDetail from "./pages/messages/MessageDetail";
import NotFound from "./pages/NotFound";

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
          <Route path="/messages" component={MessagesList} />
          <Route path="/messages/:id" component={MessageDetail} />
        </Route>

        <Route path="/login" component={Login} />

        <Route path="*404" component={NotFound} />
      </Router>
    </PbProvider>
  ),
  root!
);
