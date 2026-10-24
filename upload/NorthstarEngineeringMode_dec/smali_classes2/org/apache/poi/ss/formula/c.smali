.class public final synthetic Lorg/apache/poi/ss/formula/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/OperatorEnum$CompareOp;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/ss/formula/c;->a:I

    return-void
.end method


# virtual methods
.method public final isValid(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/c;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1, p2, p3}, Lorg/apache/poi/ss/formula/OperatorEnum;->d(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-static {p1, p2, p3}, Lorg/apache/poi/ss/formula/OperatorEnum;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result p0

    return p0

    :pswitch_1
    invoke-static {p1, p2, p3}, Lorg/apache/poi/ss/formula/OperatorEnum;->b(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
