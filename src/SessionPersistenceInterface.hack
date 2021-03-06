namespace Nazg\Session;

use type Facebook\Experimental\Http\Message\{ResponseInterface, ServerRequestInterface};

interface SessionPersistenceInterface {
  /**
   * Generate a session data instance based on the request.
   */
  public function initializeSessionFromRequest(
    ServerRequestInterface $request
  ) : SessionInterface;

  /**
   * Persist the session data instance.
   *
   * Persists the session data, returning a response instance with any
   * artifacts required to return to the client.
   */
  public function persistSessionAsync(
    SessionInterface $session,
    ResponseInterface $response
  ): Awaitable<ResponseInterface>;
}
