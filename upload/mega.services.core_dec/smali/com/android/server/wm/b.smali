.class public final synthetic Lcom/android/server/wm/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic a:Lcom/android/server/wm/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/b;

    invoke-direct {v0}, Lcom/android/server/wm/b;-><init>()V

    sput-object v0, Lcom/android/server/wm/b;->a:Lcom/android/server/wm/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    new-instance p0, Landroid/view/Surface;

    invoke-direct {p0}, Landroid/view/Surface;-><init>()V

    return-object p0
.end method
