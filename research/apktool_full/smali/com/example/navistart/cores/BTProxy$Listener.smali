.class public interface abstract Lcom/example/navistart/cores/BTProxy$Listener;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/navistart/cores/BTProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onContactsChanged(Ljava/util/List;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/example/navistart/cores/BTProxy$Contact;",
            ">;II)V"
        }
    .end annotation
.end method

.method public abstract onError(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method
