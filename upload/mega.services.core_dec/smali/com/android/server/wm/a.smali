.class public final synthetic Lcom/android/server/wm/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lcom/android/server/wm/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/a;

    invoke-direct {v0}, Lcom/android/server/wm/a;-><init>()V

    sput-object v0, Lcom/android/server/wm/a;->a:Lcom/android/server/wm/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Landroid/view/SurfaceControl$Builder;

    check-cast p1, Landroid/view/SurfaceSession;

    invoke-direct {p0, p1}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    return-object p0
.end method
