.class Lmega/widget/ToastUtil$InnerToast;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/widget/ToastUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InnerToast"
.end annotation


# static fields
.field private static final INSTANCE:Lmega/widget/ToastUtil;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmega/widget/ToastUtil;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmega/widget/ToastUtil;-><init>(Lmega/widget/ToastUtil$1;)V

    sput-object v0, Lmega/widget/ToastUtil$InnerToast;->INSTANCE:Lmega/widget/ToastUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Lmega/widget/ToastUtil;
    .locals 1

    sget-object v0, Lmega/widget/ToastUtil$InnerToast;->INSTANCE:Lmega/widget/ToastUtil;

    return-object v0
.end method
