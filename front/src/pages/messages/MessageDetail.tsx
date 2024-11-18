import { Component, createResource, createSignal, Show } from "solid-js";
import { usePb } from "../../components/context/PbContext";
import { useParams } from "@solidjs/router";
import Loader from "../../components/Loader";
import { getOneMessage } from "../../services/messages";
import { Spinner, SpinnerType } from "solid-spinner";
import { FaRegularSquareCheck } from "solid-icons/fa";
import { TiTimes } from "solid-icons/ti";
import toast from "solid-toast";

const MessageDetail: Component = () => {
  let responseField: HTMLTextAreaElement;

  let [loading, setLoading] = createSignal(false);

  const params = useParams();

  const pb = usePb();

  const [message, { refetch }] = createResource(
    { pb, id: params.id },
    getOneMessage
  );

  const checkSendResponse = async () => {
    await refetch();

    if (message()?.response_sent) {
      if (
        confirm(
          "La réponse a déjà été envoyée, voulez-vous vraiment la renvoyer ?"
        )
      ) {
        sendResponse();
      }
    } else {
      sendResponse();
    }
  };

  const sendResponse = async () => {
    try {
      const result = await fetch(
        import.meta.env.VITE_API_URL + "/api/sendResponse/" + message()?.id,
        { headers: { Authorization: pb.authStore.token } }
      );

      if (!result.ok) {
        throw Error("Erreur d'envoi de la réponse");
      }

      await refetch();

      toast.success("Réponse envoyée avec succès");
    } catch (e: any) {
      toast.error(e.toString());
    }
  };

  const checkResponse = async () => {
    await refetch();

    if (message()?.response.length) {
      if (
        confirm(
          "Voulez-vous générer une nouvelle réponse ? Cela écrasera le contenu existant"
        )
      ) {
        generateResponse();
      }

      return;
    } else {
      generateResponse();
    }
  };

  const generateResponse = async () => {
    try {
      setLoading(true);

      const result = await fetch(
        import.meta.env.VITE_API_URL + "/api/generateResponse/" + message()?.id,
        { headers: { Authorization: pb.authStore.token } }
      );

      if (!result.ok) {
        throw Error("Erreur de génération de la réponse");
      }

      const { response } = await result.json();

      setLoading(false);

      responseField.value = response;

      toast.success("Réponse générée avec succès");
    } catch (e: any) {
      toast.error(e.toString());
    }
  };

  const updateResponse = async (value: string) => {
    if (!value || value === message()?.response) {
      return;
    }

    try {
      const result = await pb
        .collection("messages")
        .update(message()?.id || "", { ...message(), response: value });
      if (!result.ok) {
        throw Error("Erreur de mise à jour de la réponse");
      }
      toast.success("Réponse mise à jour avec succès");
    } catch (e: any) {
      toast.error(e.toString());
    }
  };

  return (
    <Show when={message()?.id} fallback={<Loader />}>
      <div class="card bg-base-100 shadow-xl">
        <div class="card-body">
          <label class="form-control w-full">
            <div class="label">
              <span class="badge badge-accent">Apprenant</span>
            </div>
            {message()?.metadata.author.username} {message()?.roles.map((r:string) => `[${r}]`).join(" ")}
          </label>

          <label class="form-control w-full">
            <div class="label">
              <span class="badge badge-accent">Question</span>
            </div>
            <div innerHTML={message()?.question}></div>
          </label>

          <label class="form-control w-full">
            <div class="label">
              <span class="badge badge-accent">Statut</span>
            </div>
            <div class="flex gap-4 items-center">
              {message()?.response_sent ? (
                <>
                  <FaRegularSquareCheck /> <p>Déjà répondu</p>
                </>
              ) : (
                <>
                  <TiTimes /> <p>Pas encore répondu</p>
                </>
              )}
            </div>
          </label>

          <form>
            <div>
              <label class="form-control">
                <div class="label">
                  <span class="label-text">Réponse</span>
                </div>
                <textarea
                  onChange={(e) => updateResponse(e.target.value)}
                  ref={(el) => (responseField = el)}
                  class="textarea textarea-bordered h-24"
                  placeholder="Réponse"
                  value={message()?.response}
                  disabled={loading() ? true : false}
                ></textarea>
              </label>
            </div>
            <div class="mt-4 flex justify-between">
              <div class="flex gap-4">
                <a
                  onClick={loading() ? () => {} : () => checkResponse()}
                  class="btn btn-secondary"
                >
                  Générer la réponse
                </a>
                {loading() ? (
                  <div class="flex gap-4 items-center">
                    <Spinner type={SpinnerType.puff} color="red" /> Génération
                    de la réponse...
                  </div>
                ) : null}
              </div>
              <a
                onClick={loading() ? () => {} : () => checkSendResponse()}
                class="btn btn-primary"
              >
                Envoyer la réponse
              </a>
            </div>
          </form>
        </div>
      </div>
    </Show>
  );
};

export default MessageDetail;
