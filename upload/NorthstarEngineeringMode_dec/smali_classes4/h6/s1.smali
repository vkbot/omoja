.class public final synthetic Lh6/s1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lh6/s1;->a:I

    iput-object p1, p0, Lh6/s1;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl;

    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMacroName;

    iget-object p0, p0, Lh6/s1;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl;->setExitMacroArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMacroName;)V

    return-void
.end method

.method private final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFDDList;

    iget-object p0, p0, Lh6/s1;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl;->setDdListArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFDDList;)V

    return-void
.end method

.method private final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFStatusText;

    iget-object p0, p0, Lh6/s1;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl;->setStatusTextArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFStatusText;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lh6/s1;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, p1, p2}, Lh6/s1;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;

    iget-object p0, p0, Lh6/s1;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl;->setCheckBoxArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lh6/s1;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_2
    invoke-direct {p0, p1, p2}, Lh6/s1;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
