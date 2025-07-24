export default ({ env }) => ({
  host: env('HOST', '0.0.0.0'),
  port: env.int('PORT', 1337),
  app: {
        keys: env.array("APP_KEYS", ["SnKA3gsgrX+K97gnMLaukr/09GlfRZt4HzDPsbPJ8XY=", "Uotsu8+A0PJgROqv60BOJi2Y/DXD6TqTb1y4nJk9dyk="]),
  },
});
