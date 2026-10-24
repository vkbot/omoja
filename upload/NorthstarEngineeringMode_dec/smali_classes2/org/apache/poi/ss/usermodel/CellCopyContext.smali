.class public Lorg/apache/poi/ss/usermodel/CellCopyContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final styleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/usermodel/CellStyle;",
            "Lorg/apache/poi/ss/usermodel/CellStyle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyContext;->styleMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getMappedStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/usermodel/CellCopyContext;->styleMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/usermodel/CellStyle;

    return-object p0
.end method

.method public putMappedStyle(Lorg/apache/poi/ss/usermodel/CellStyle;Lorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/usermodel/CellCopyContext;->styleMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
