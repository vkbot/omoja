.class Lmega/widget/BlurHelper$InnerBlur;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/widget/BlurHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InnerBlur"
.end annotation


# static fields
.field private static final INSTANCE:Lmega/widget/BlurHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmega/widget/BlurHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmega/widget/BlurHelper;-><init>(Lmega/widget/BlurHelper$1;)V

    sput-object v0, Lmega/widget/BlurHelper$InnerBlur;->INSTANCE:Lmega/widget/BlurHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Lmega/widget/BlurHelper;
    .locals 1

    sget-object v0, Lmega/widget/BlurHelper$InnerBlur;->INSTANCE:Lmega/widget/BlurHelper;

    return-object v0
.end method
