.class public final synthetic Lorg/apache/commons/io/build/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/io/function/IOFunction;


# instance fields
.field public final synthetic b:J

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(JI)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lorg/apache/commons/io/build/a;->b:J

    .line 5
    .line 6
    iput p3, p0, Lorg/apache/commons/io/build/a;->c:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    iget v0, p0, Lorg/apache/commons/io/build/a;->c:I

    .line 2
    .line 3
    check-cast p1, Ljava/io/RandomAccessFile;

    .line 4
    .line 5
    iget-wide v1, p0, Lorg/apache/commons/io/build/a;->b:J

    .line 6
    .line 7
    invoke-static {v1, v2, v0, p1}, Lorg/apache/commons/io/build/AbstractOrigin$PathOrigin;->a(JILjava/io/RandomAccessFile;)[B

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
