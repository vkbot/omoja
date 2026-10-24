.class public Lcom/android/managedprovisioning/common/ClickableSpanFactory;
.super Ljava/lang/Object;
.source "ClickableSpanFactory.java"


# instance fields
.field private final linkColor:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/android/managedprovisioning/common/ClickableSpanFactory;->linkColor:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/managedprovisioning/common/ClickableSpanFactory;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/android/managedprovisioning/common/ClickableSpanFactory;->linkColor:I

    return p0
.end method


# virtual methods
.method public create(Landroid/content/Intent;)Landroid/text/style/ClickableSpan;
    .locals 1

    .line 38
    new-instance v0, Lcom/android/managedprovisioning/common/ClickableSpanFactory$1;

    invoke-direct {v0, p0, p1}, Lcom/android/managedprovisioning/common/ClickableSpanFactory$1;-><init>(Lcom/android/managedprovisioning/common/ClickableSpanFactory;Landroid/content/Intent;)V

    return-object v0
.end method
