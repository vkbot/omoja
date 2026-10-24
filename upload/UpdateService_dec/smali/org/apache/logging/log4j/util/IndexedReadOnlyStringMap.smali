.class public interface abstract Lorg/apache/logging/log4j/util/IndexedReadOnlyStringMap;
.super Ljava/lang/Object;
.source "IndexedReadOnlyStringMap.java"

# interfaces
.implements Lorg/apache/logging/log4j/util/ReadOnlyStringMap;


# virtual methods
.method public abstract getKeyAt(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getValueAt(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I)TV;"
        }
    .end annotation
.end method

.method public abstract indexOfKey(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation
.end method
