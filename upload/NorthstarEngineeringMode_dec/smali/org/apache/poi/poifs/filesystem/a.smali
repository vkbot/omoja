.class public final synthetic Lorg/apache/poi/poifs/filesystem/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/apache/poi/poifs/filesystem/Entry;

    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/EntryUtils$DirectoryDelegate;->a(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/EntryUtils$POIDelegate;

    move-result-object p0

    return-object p0
.end method
