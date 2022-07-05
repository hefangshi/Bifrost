find  ./cmd -type f -name '*.go' ! -name service.go ! -name ipam_test.go|while read cmd;do
    echo 'start build' $cmd
    GOOS=linux GOARCH=amd64 go build -o ./bin/ `dirname $cmd`
done