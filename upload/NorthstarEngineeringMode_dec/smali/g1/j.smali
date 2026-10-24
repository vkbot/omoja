.class public final synthetic Lg1/j;
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

    iput p1, p0, Lg1/j;->a:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget p0, p0, Lg1/j;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lorg/apache/xmlbeans/impl/schema/g;

    monitor-enter p1

    const/4 p0, 0x1

    :try_start_0
    iput-boolean p0, p1, Lorg/apache/xmlbeans/impl/schema/g;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :pswitch_0
    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;->unsetBottom()V

    return-void

    :pswitch_1
    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->unsetRight()V

    return-void

    :pswitch_2
    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->unsetInsideV()V

    return-void

    :pswitch_3
    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->unsetBottom()V

    return-void

    :pswitch_4
    check-cast p1, Lcom/mega/engineeringmode/function/radio/a$b;

    invoke-interface {p1}, Lcom/mega/engineeringmode/function/radio/a$b;->a()V

    return-void

    :pswitch_5
    check-cast p1, Ljava/lang/Byte;

    sget-object p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->A:Ljava/lang/Byte;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "data byte: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmega/log/MLog;->d(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
