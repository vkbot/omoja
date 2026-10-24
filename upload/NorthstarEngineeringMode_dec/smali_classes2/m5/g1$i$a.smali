.class public final Lm5/g1$i$a;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/g1$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final c:Lorg/xml/sax/SAXException;


# direct methods
.method public constructor <init>(Lorg/xml/sax/SAXException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object p1, p0, Lm5/g1$i$a;->c:Lorg/xml/sax/SAXException;

    return-void
.end method
