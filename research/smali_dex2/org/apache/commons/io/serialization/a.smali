.class public final synthetic Lorg/apache/commons/io/serialization/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;I)V
    .registers 3

    .line 1
    iput p2, p0, Lorg/apache/commons/io/serialization/a;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/apache/commons/io/serialization/a;->c:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget v0, p0, Lorg/apache/commons/io/serialization/a;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_12

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/serialization/a;->c:Ljava/util/List;

    .line 7
    .line 8
    check-cast p1, Lorg/apache/commons/io/serialization/WildcardClassNameMatcher;

    .line 9
    .line 10
    :goto_9
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_d
    iget-object v0, p0, Lorg/apache/commons/io/serialization/a;->c:Ljava/util/List;

    .line 15
    .line 16
    check-cast p1, Lorg/apache/commons/io/serialization/FullClassNameMatcher;

    .line 17
    .line 18
    goto :goto_9

    .line 19
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method
