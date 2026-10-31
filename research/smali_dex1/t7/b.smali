.class public final Lt7/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final d:Ljava/lang/ThreadLocal;


# instance fields
.field public final a:Lcom/google/protobuf/x0;

.field public final b:Lcom/google/protobuf/a;

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lt7/b;->d:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/a;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "defaultInstance cannot be null"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lt7/b;->b:Lcom/google/protobuf/a;

    .line 10
    .line 11
    check-cast p1, Lcom/google/protobuf/y;

    .line 12
    .line 13
    const/4 v0, 0x7

    .line 14
    invoke-virtual {p1, v0}, Lcom/google/protobuf/y;->e(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/google/protobuf/x0;

    .line 19
    .line 20
    iput-object p1, p0, Lt7/b;->a:Lcom/google/protobuf/x0;

    .line 21
    .line 22
    const/4 p1, -0x1

    .line 23
    iput p1, p0, Lt7/b;->c:I

    .line 24
    .line 25
    return-void
.end method
