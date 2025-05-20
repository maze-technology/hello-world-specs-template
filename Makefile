build:
	@smithytranslate smithy-to-proto --input src/main/smithy build/generated/proto
	@python3 scripts/smithy-protovalidate/src/main/python/inject_protovalidate.py ./src/main/smithy ./build/generated/proto
	@buf generate
	@./gradlew build

clean:
	@./gradlew clean

version:
	@./gradlew --version

upgrade:
	@if [ -z "$(GRADLE_VERSION)" ]; then \
		echo "Warning: GRADLE_VERSION is not set. Usage: make upgrade GRADLE_VERSION=X.Y.Z"; \
	else \
		./gradlew wrapper --gradle-version $(GRADLE_VERSION) --distribution-type all; \
	fi
