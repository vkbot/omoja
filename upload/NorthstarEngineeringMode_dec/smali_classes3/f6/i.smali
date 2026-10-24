.class public final synthetic Lf6/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lf6/i;->a:I

    iput-object p1, p0, Lf6/i;->b:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lf6/i;->a:I

    iget-object p0, p0, Lf6/i;->b:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;->getGraphicFrameArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;->insertNewGrpSp(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;->getContentPartArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTRel;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;->insertNewPic(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
