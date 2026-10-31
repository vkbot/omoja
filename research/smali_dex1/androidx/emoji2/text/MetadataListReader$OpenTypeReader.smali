.class interface abstract Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/MetadataListReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OpenTypeReader"
.end annotation


# static fields
.field public static final UINT16_BYTE_COUNT:I = 0x2

.field public static final UINT32_BYTE_COUNT:I = 0x4


# virtual methods
.method public abstract getPosition()J
.end method

.method public abstract readTag()I
.end method

.method public abstract readUnsignedInt()J
.end method

.method public abstract readUnsignedShort()I
.end method

.method public abstract skip(I)V
.end method
