.class public final synthetic Lcom/mega/nexus/app/-$$Lambda$MegaUserManager$OajNM8wCFwtf25Mgft3-rPAH1fo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/nexus/app/-$$Lambda$MegaUserManager$OajNM8wCFwtf25Mgft3-rPAH1fo;->f$0:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/mega/nexus/app/-$$Lambda$MegaUserManager$OajNM8wCFwtf25Mgft3-rPAH1fo;->f$1:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/mega/nexus/app/-$$Lambda$MegaUserManager$OajNM8wCFwtf25Mgft3-rPAH1fo;->f$0:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mega/nexus/app/-$$Lambda$MegaUserManager$OajNM8wCFwtf25Mgft3-rPAH1fo;->f$1:Ljava/util/HashMap;

    check-cast p1, Landroid/os/UserHandle;

    invoke-static {v0, v1, p1}, Lcom/mega/nexus/app/MegaUserManager;->lambda$getMatchingListOfDisplayTypeAndUser$0(Ljava/util/ArrayList;Ljava/util/HashMap;Landroid/os/UserHandle;)V

    return-void
.end method
