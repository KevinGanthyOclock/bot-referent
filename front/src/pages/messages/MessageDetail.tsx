import { Component, createResource, Show } from "solid-js";
import { usePb } from "../../components/context/PbContext";
import { action, useParams } from "@solidjs/router";
import Loader from "../../components/Loader";
import { getOneMessage } from "../../services/messages";

const MessageDetail: Component = () => {
  const params = useParams();

  const pb = usePb();

  const [message] = createResource({ pb, id: params.id }, getOneMessage);

  const sendResponse = action(async () => {
    console.log("hi");
  });

  return (
    <Show when={message()?.id} fallback={<Loader />}>
      <div class="card bg-base-100 shadow-xl">
        <div class="card-body">
          <label class="form-control w-full">
            <div class="label">
              <span class="badge badge-accent">Apprenant</span>
            </div>
            {message().writer}
          </label>

          <label class="form-control w-full">
            <div class="label">
              <span class="badge badge-accent">Question</span>
            </div>
            <div innerHTML={message().question}></div>
          </label>

          <form action={sendResponse} method="post">
            <div>
              <label class="form-control">
                <div class="label">
                  <span class="label-text">Réponse</span>
                </div>
                <textarea
                  class="textarea textarea-bordered h-24"
                  placeholder="Réponse"
                ></textarea>
              </label>
            </div>
            <div class="mt-4 flex justify-between">
              <a class="btn btn-secondary">Générer la réponse</a>
              <input type="submit" class="btn btn-primary" value="Envoyer" />
            </div>
          </form>
        </div>
      </div>
    </Show>
  );
};

export default MessageDetail;
