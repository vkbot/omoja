.class public final synthetic Lorg/apache/commons/io/m;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/io/function/IOBooleanSupplier;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/io/File;

.field public final synthetic d:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Ljava/io/File;I)V
    .registers 4

    .line 1
    iput p3, p0, Lorg/apache/commons/io/m;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/apache/commons/io/m;->c:Ljava/io/File;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/apache/commons/io/m;->d:Ljava/io/File;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .registers 3

    .line 1
    iget v0, p0, Lorg/apache/commons/io/m;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_18

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/m;->c:Ljava/io/File;

    .line 7
    .line 8
    iget-object v1, p0, Lorg/apache/commons/io/m;->d:Ljava/io/File;

    .line 9
    .line 10
    invoke-static {v0, v1}, Lorg/apache/commons/io/FileUtils;->q(Ljava/io/File;Ljava/io/File;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0

    .line 15
    :pswitch_e
    iget-object v0, p0, Lorg/apache/commons/io/m;->c:Ljava/io/File;

    .line 16
    .line 17
    iget-object v1, p0, Lorg/apache/commons/io/m;->d:Ljava/io/File;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lorg/apache/commons/io/FileUtils;->r(Ljava/io/File;Ljava/io/File;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    nop

    .line 25
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_e
    .end packed-switch
.end method
