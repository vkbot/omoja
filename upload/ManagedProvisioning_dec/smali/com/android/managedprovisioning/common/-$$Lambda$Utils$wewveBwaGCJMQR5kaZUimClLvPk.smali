.class public final synthetic Lcom/android/managedprovisioning/common/-$$Lambda$Utils$wewveBwaGCJMQR5kaZUimClLvPk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/managedprovisioning/common/Utils;


# direct methods
.method public synthetic constructor <init>(Lcom/android/managedprovisioning/common/Utils;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/managedprovisioning/common/-$$Lambda$Utils$wewveBwaGCJMQR5kaZUimClLvPk;->f$0:Lcom/android/managedprovisioning/common/Utils;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/managedprovisioning/common/-$$Lambda$Utils$wewveBwaGCJMQR5kaZUimClLvPk;->f$0:Lcom/android/managedprovisioning/common/Utils;

    check-cast p1, Landroid/net/NetworkCapabilities;

    invoke-static {p0, p1}, Lcom/android/managedprovisioning/common/Utils;->lambda$wewveBwaGCJMQR5kaZUimClLvPk(Lcom/android/managedprovisioning/common/Utils;Landroid/net/NetworkCapabilities;)Z

    move-result p0

    return p0
.end method
