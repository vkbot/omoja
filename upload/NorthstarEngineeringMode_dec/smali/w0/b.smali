.class public final synthetic Lw0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lw0/b;->a:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lw0/b;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;->unsetTop()V

    return-void

    :pswitch_0
    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;->unsetRight()V

    return-void

    :pswitch_1
    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->unsetTop()V

    return-void

    :pswitch_2
    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->unsetInsideH()V

    return-void

    :pswitch_3
    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_4
    check-cast p1, Ljava/nio/channels/FileChannel;

    invoke-static {p1}, Li4/c;->a(Ljava/io/Closeable;)V

    return-void

    :pswitch_5
    check-cast p1, Lcom/mega/engineeringmode/function/radio/a$b;

    invoke-interface {p1}, Lcom/mega/engineeringmode/function/radio/a$b;->a()V

    return-void

    :pswitch_6
    check-cast p1, Lcom/android/settingslib/core/AbstractPreferenceController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
