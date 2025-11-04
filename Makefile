generate-user-api:
	mkdir -p generated/go/user/v1
	protoc --proto_path=proto/user_v1 \
		--go_out=generated/go/user/v1 --go_opt=paths=source_relative \
		--go-grpc_out=generated/go/user/v1 --go-grpc_opt=paths=source_relative \
		proto/user_v1/user.proto proto/user_v1/auth.proto proto/user_v1/access.proto proto/user_v1/user_data.proto

generate-moderation-api:
	mkdir -p generated/go/moderation/v1
	protoc --proto_path=proto/moderation_v1 \
		--go_out=generated/go/moderation/v1 --go_opt=paths=source_relative \
		--go-grpc_out=generated/go/moderation/v1 --go-grpc_opt=paths=source_relative \
		proto/moderation_v1/moderation.proto proto/moderation_v1/artist.proto