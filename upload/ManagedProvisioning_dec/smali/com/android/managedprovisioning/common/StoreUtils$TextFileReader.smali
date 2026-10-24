.class public interface abstract Lcom/android/managedprovisioning/common/StoreUtils$TextFileReader;
.super Ljava/lang/Object;
.source "StoreUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/managedprovisioning/common/StoreUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TextFileReader"
.end annotation


# virtual methods
.method public abstract read(Ljava/io/File;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
