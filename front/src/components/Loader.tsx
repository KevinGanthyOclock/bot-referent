import { Component } from "solid-js";
import { Spinner, SpinnerType } from "solid-spinner";

const Loader: Component = () => {
  return <Spinner type={SpinnerType.puff} color="red" />;
};

export default Loader;
