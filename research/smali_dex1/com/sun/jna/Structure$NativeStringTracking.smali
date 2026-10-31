.class Lcom/sun/jna/Structure$NativeStringTracking;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/Structure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeStringTracking"
.end annotation


# instance fields
.field private peer:Lcom/sun/jna/NativeString;

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/sun/jna/Structure$NativeStringTracking;->value:Ljava/lang/Object;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic access$000(Lcom/sun/jna/Structure$NativeStringTracking;)Lcom/sun/jna/NativeString;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/sun/jna/Structure$NativeStringTracking;->peer:Lcom/sun/jna/NativeString;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$002(Lcom/sun/jna/Structure$NativeStringTracking;Lcom/sun/jna/NativeString;)Lcom/sun/jna/NativeString;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/sun/jna/Structure$NativeStringTracking;->peer:Lcom/sun/jna/NativeString;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$100(Lcom/sun/jna/Structure$NativeStringTracking;)Ljava/lang/Object;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/sun/jna/Structure$NativeStringTracking;->value:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method
