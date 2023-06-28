export function buildRoutePath(path) {
  const routeParametersRegex = /:([a-zA-Z]+)/g
  const paramsWithParams = path.replace(new RegExp(routeParametersRegex, 'g'), '(?<$1>[a-z0-9\-_]+)');

  const pathRegex = new RegExp(`^${paramsWithParams}(?<query>\\?(.*))?$`)

  return pathRegex
}