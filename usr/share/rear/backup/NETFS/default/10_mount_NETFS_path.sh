# create mount point
mkdir -p $v "$BUILD_DIR/outputfs" >&2
StopIfError "Could not mkdir '$BUILD_DIR/outputfs'"

AddExitTask "rmdir $v $BUILD_DIR/outputfs >&2"

if [[ "$NETFS_MOUNTCMD" ]] ; then
    NETFS_URL="var://NETFS_MOUNTCMD"
fi

mount_url $NETFS_URL $BUILD_DIR/outputfs
