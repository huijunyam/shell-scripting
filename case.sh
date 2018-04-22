read -p "Enter y or n: " ANSWER
case "$ANSWER" in
  [yY] | [yY] [eE] [sS]) #[yY]*
    echo "You answered yes"
    ;;
  [nN] | [nN] [oO])
    echo "You answered no"
    ;;
  *)
    echo "Invalid answer"
    ;;
esac

read -p "Choose start or stop server: " ANSWER
case "$ANSWER" in
  start)
    ./tmp/sleep-walking-server &
    ;;
  stop)
    kill $(cat /tmp/sleep­walking­server.pid)
    ;;
  *)
    echo "Usage: $0 start|stop"
    exit 1
esac
