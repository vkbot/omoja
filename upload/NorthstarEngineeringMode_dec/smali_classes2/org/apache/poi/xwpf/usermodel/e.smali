.class public final synthetic Lorg/apache/poi/xwpf/usermodel/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/xwpf/usermodel/e;->a:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/xwpf/usermodel/e;->a:I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    check-cast p1, Li5/r;

    invoke-interface {p1}, Li5/r;->K()Li5/r$a;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Li5/t$a;

    invoke-virtual {p1}, Li5/r$a;->a()Li5/r;

    move-result-object p0

    check-cast p0, Li5/t;

    return-object p0

    :pswitch_2
    check-cast p1, Li5/c0$a;

    invoke-virtual {p1}, Li5/r$a;->a()Li5/r;

    move-result-object p0

    check-cast p0, Li5/c0;

    return-object p0

    :pswitch_3
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/r$a;

    return-object p0

    :pswitch_4
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/z;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Li5/p$a;

    invoke-virtual {p1}, Li5/r$a;->a()Li5/r;

    move-result-object p0

    check-cast p0, Li5/p;

    return-object p0

    :pswitch_7
    check-cast p1, Li5/u$a;

    invoke-virtual {p1}, Li5/r$a;->a()Li5/r;

    move-result-object p0

    check-cast p0, Li5/u;

    return-object p0

    :pswitch_8
    check-cast p1, Li5/c0$a;

    invoke-virtual {p1}, Li5/r$a;->a()Li5/r;

    move-result-object p0

    check-cast p0, Li5/c0;

    return-object p0

    :pswitch_9
    check-cast p1, Li5/y$a;

    invoke-virtual {p1}, Li5/r$a;->a()Li5/r;

    move-result-object p0

    check-cast p0, Li5/y;

    return-object p0

    :pswitch_a
    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;->getTop()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;->isSetLeft()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;->getTop()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;->getRight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;->addNewBottom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->addNewLeft()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->addNewInsideH()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->addNewInsideV()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object p0

    return-object p0

    :pswitch_12
    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->getBottom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object p0

    return-object p0

    :pswitch_13
    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->getRight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->getTop()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->isSetRight()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_16
    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->isSetInsideV()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->isSetBottom()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
