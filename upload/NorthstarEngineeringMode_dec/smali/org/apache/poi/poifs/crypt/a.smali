.class public final synthetic Lorg/apache/poi/poifs/crypt/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;
.implements Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient$MethodHandler;


# instance fields
.field public final synthetic c:[B


# direct methods
.method public synthetic constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/a;->c:[B

    return-void
.end method


# virtual methods
.method public final handle(Ljava/net/HttpURLConnection;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/a;->c:[B

    invoke-static {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->c([BLjava/net/HttpURLConnection;)V

    return-void
.end method

.method public final processPOIFSWriterEvent(Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/a;->c:[B

    invoke-static {p0, p1}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->a([BLorg/apache/poi/poifs/filesystem/POIFSWriterEvent;)V

    return-void
.end method
