.class public final synthetic Lcom/android/managedprovisioning/common/-$$Lambda$TouchTargetEnforcer$cH28g3l5zEf8il8foqCJnvujwLA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/managedprovisioning/common/TouchTargetEnforcer;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/managedprovisioning/common/TouchTargetEnforcer;Landroid/view/View;IIILandroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/managedprovisioning/common/-$$Lambda$TouchTargetEnforcer$cH28g3l5zEf8il8foqCJnvujwLA;->f$0:Lcom/android/managedprovisioning/common/TouchTargetEnforcer;

    iput-object p2, p0, Lcom/android/managedprovisioning/common/-$$Lambda$TouchTargetEnforcer$cH28g3l5zEf8il8foqCJnvujwLA;->f$1:Landroid/view/View;

    iput p3, p0, Lcom/android/managedprovisioning/common/-$$Lambda$TouchTargetEnforcer$cH28g3l5zEf8il8foqCJnvujwLA;->f$2:I

    iput p4, p0, Lcom/android/managedprovisioning/common/-$$Lambda$TouchTargetEnforcer$cH28g3l5zEf8il8foqCJnvujwLA;->f$3:I

    iput p5, p0, Lcom/android/managedprovisioning/common/-$$Lambda$TouchTargetEnforcer$cH28g3l5zEf8il8foqCJnvujwLA;->f$4:I

    iput-object p6, p0, Lcom/android/managedprovisioning/common/-$$Lambda$TouchTargetEnforcer$cH28g3l5zEf8il8foqCJnvujwLA;->f$5:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/managedprovisioning/common/-$$Lambda$TouchTargetEnforcer$cH28g3l5zEf8il8foqCJnvujwLA;->f$0:Lcom/android/managedprovisioning/common/TouchTargetEnforcer;

    iget-object v1, p0, Lcom/android/managedprovisioning/common/-$$Lambda$TouchTargetEnforcer$cH28g3l5zEf8il8foqCJnvujwLA;->f$1:Landroid/view/View;

    iget v2, p0, Lcom/android/managedprovisioning/common/-$$Lambda$TouchTargetEnforcer$cH28g3l5zEf8il8foqCJnvujwLA;->f$2:I

    iget v3, p0, Lcom/android/managedprovisioning/common/-$$Lambda$TouchTargetEnforcer$cH28g3l5zEf8il8foqCJnvujwLA;->f$3:I

    iget v4, p0, Lcom/android/managedprovisioning/common/-$$Lambda$TouchTargetEnforcer$cH28g3l5zEf8il8foqCJnvujwLA;->f$4:I

    iget-object v5, p0, Lcom/android/managedprovisioning/common/-$$Lambda$TouchTargetEnforcer$cH28g3l5zEf8il8foqCJnvujwLA;->f$5:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/android/managedprovisioning/common/TouchTargetEnforcer;->lambda$enforce$0$TouchTargetEnforcer(Landroid/view/View;IIILandroid/view/View;)V

    return-void
.end method
