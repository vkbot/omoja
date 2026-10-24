.class public final synthetic Lf6/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lf6/c;->a:I

    iput-object p1, p0, Lf6/c;->b:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lf6/c;->a:I

    iget-object p0, p0, Lf6/c;->b:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;->sizeOfGraphicFrameArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;->sizeOfContentPartArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
