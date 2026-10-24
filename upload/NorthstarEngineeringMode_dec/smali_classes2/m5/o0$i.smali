.class public final Lm5/o0$i;
.super Lorg/w3c/dom/DOMException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    const-string v1, "Attribute currently in use error"

    invoke-direct {p0, v0, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    return-void
.end method
