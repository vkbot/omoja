.class public final synthetic Lorg/apache/poi/poifs/eventfilesystem/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;

    invoke-static {p1}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->a(Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
