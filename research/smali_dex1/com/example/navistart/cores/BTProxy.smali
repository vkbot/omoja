.class public interface abstract Lcom/example/navistart/cores/BTProxy;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/navistart/cores/BTProxy$PhoneNumber;,
        Lcom/example/navistart/cores/BTProxy$Contact;,
        Lcom/example/navistart/cores/BTProxy$Listener;
    }
.end annotation


# virtual methods
.method public call(Ljava/lang/String;)Z
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public getContacts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/example/navistart/cores/BTProxy$Contact;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public requestContacts()Z
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public setListener(Lcom/example/navistart/cores/BTProxy$Listener;)V
    .registers 2

    .line 1
    return-void
.end method
