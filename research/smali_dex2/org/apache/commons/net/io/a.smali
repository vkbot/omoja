.class public final synthetic Lorg/apache/commons/net/io/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:J

.field public final synthetic c:I

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(IJJ)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p2, p0, Lorg/apache/commons/net/io/a;->b:J

    .line 5
    .line 6
    iput p1, p0, Lorg/apache/commons/net/io/a;->c:I

    .line 7
    .line 8
    iput-wide p4, p0, Lorg/apache/commons/net/io/a;->d:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 8

    .line 1
    iget-wide v3, p0, Lorg/apache/commons/net/io/a;->d:J

    .line 2
    .line 3
    move-object v5, p1

    .line 4
    check-cast v5, Lorg/apache/commons/net/io/CopyStreamListener;

    .line 5
    .line 6
    iget-wide v0, p0, Lorg/apache/commons/net/io/a;->b:J

    .line 7
    .line 8
    iget v2, p0, Lorg/apache/commons/net/io/a;->c:I

    .line 9
    .line 10
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/net/io/CopyStreamAdapter;->b(JIJLorg/apache/commons/net/io/CopyStreamListener;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
