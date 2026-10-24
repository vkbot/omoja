.class public final synthetic Lcom/android/managedprovisioning/ota/-$$Lambda$OtaController$zizxPgYOE2kkDp16WW4p-AIp30g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/managedprovisioning/ota/-$$Lambda$OtaController$zizxPgYOE2kkDp16WW4p-AIp30g;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/managedprovisioning/ota/-$$Lambda$OtaController$zizxPgYOE2kkDp16WW4p-AIp30g;->f$0:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/managedprovisioning/ota/OtaController;->lambda$new$0(Landroid/content/Context;I)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method
