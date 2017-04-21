FROM busybox
RUN touch jamies-cool-file
CMD echo 'created jamies cool file'
HEALTHCHECK --interval=2s --timeout=3s --retries=3 \
	CMD stat jamies-cool-file || exit 1
