.class public final synthetic Lg6/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTAuthorsImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTAuthorsImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lg6/a;->a:I

    iput-object p1, p0, Lg6/a;->b:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTAuthorsImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lg6/a;->a:I

    iget-object p0, p0, Lg6/a;->b:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTAuthorsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTAuthorsImpl;->insertAuthor(ILjava/lang/String;)V

    return-void

    :pswitch_0
    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTAuthorsImpl;->xsetAuthorArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
