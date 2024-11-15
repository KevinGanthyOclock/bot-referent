import { Component, createResource, For, Suspense } from "solid-js";
import { usePb } from "../../components/context/PbContext";
import { FaRegularSquareCheck } from "solid-icons/fa";
import { TiTimes } from "solid-icons/ti";
import { A } from "@solidjs/router";
import { getAllMessages } from "../../services/messages";
import Loader from "../../components/Loader";

const MessagesList: Component = () => {
  const pb = usePb();

  const [messages] = createResource(pb, getAllMessages);

  return (
    <Suspense fallback={<Loader />}>
      <div class="prose py-8">
        <h1>Messages</h1>
      </div>
      <div>
        <div class="overflow-x-auto">
          <table class="table">
            <thead>
              <tr>
                <th></th>
                <th>Apprenant</th>
                <th>Question</th>
                <th>Traité</th>
                <th>Actions</th>
              </tr>
            </thead>
            <tbody>
              <For each={messages()}>
                {(message, index) => (
                  <tr>
                    <th>{index() + 1}</th>
                    <td>{message.writer}</td>
                    <td innerHTML={message.question}></td>
                    <td>
                      {message.response_sent ? (
                        <FaRegularSquareCheck />
                      ) : (
                        <TiTimes />
                      )}
                    </td>
                    <td>
                      <A class="btn" href={`/messages/${message.id}`}>
                        Voir
                      </A>
                    </td>
                  </tr>
                )}
              </For>
            </tbody>
          </table>
        </div>
      </div>
    </Suspense>
  );
};

export default MessagesList;
