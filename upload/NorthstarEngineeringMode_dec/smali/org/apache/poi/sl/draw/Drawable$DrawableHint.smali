.class public Lorg/apache/poi/sl/draw/Drawable$DrawableHint;
.super Ljava/awt/RenderingHints$Key;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sl/draw/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrawableHint"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/awt/RenderingHints$Key;-><init>(I)V

    return-void
.end method


# virtual methods
.method public isCompatibleValue(Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/Drawable$DrawableHint;->intKey()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UNKNOWN_ID "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/Drawable$DrawableHint;->intKey()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "CACHE_IMAGE_SOURCE"

    return-object p0

    :pswitch_1
    const-string p0, "EMF_FORCE_HEADER_BOUNDS"

    return-object p0

    :pswitch_2
    const-string p0, "DEFAULT_CHARSET"

    return-object p0

    :pswitch_3
    const-string p0, "BUFFERED_IMAGE"

    return-object p0

    :pswitch_4
    const-string p0, "CURRENT_SLIDE"

    return-object p0

    :pswitch_5
    const-string p0, "GRESTORE"

    return-object p0

    :pswitch_6
    const-string p0, "GSAVE"

    return-object p0

    :pswitch_7
    const-string p0, "FONT_MAP"

    return-object p0

    :pswitch_8
    const-string p0, "FONT_FALLBACK"

    return-object p0

    :pswitch_9
    const-string p0, "FONT_HANDLER"

    return-object p0

    :pswitch_a
    const-string p0, "PRESET_GEOMETRY_CACHE"

    return-object p0

    :pswitch_b
    const-string p0, "GRADIENT_SHAPE"

    return-object p0

    :pswitch_c
    const-string p0, "TEXT_RENDERING_MODE"

    return-object p0

    :pswitch_d
    const-string p0, "IMAGE_RENDERER"

    return-object p0

    :pswitch_e
    const-string p0, "GROUP_TRANSFORM"

    return-object p0

    :pswitch_f
    const-string p0, "DRAW_FACTORY"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
