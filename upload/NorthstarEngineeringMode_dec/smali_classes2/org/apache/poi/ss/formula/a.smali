.class public final synthetic Lorg/apache/poi/ss/formula/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/FormulaCellCache$IEntryOperation;


# instance fields
.field public final synthetic a:Lorg/apache/poi/ss/formula/EvaluationCache;

.field public final synthetic b:Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/ss/formula/EvaluationCache;Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/a;->a:Lorg/apache/poi/ss/formula/EvaluationCache;

    iput-object p2, p0, Lorg/apache/poi/ss/formula/a;->b:Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;

    iput p3, p0, Lorg/apache/poi/ss/formula/a;->c:I

    iput p4, p0, Lorg/apache/poi/ss/formula/a;->d:I

    return-void
.end method


# virtual methods
.method public final processEntry(Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;)V
    .locals 3

    iget v0, p0, Lorg/apache/poi/ss/formula/a;->c:I

    iget v1, p0, Lorg/apache/poi/ss/formula/a;->d:I

    iget-object v2, p0, Lorg/apache/poi/ss/formula/a;->a:Lorg/apache/poi/ss/formula/EvaluationCache;

    iget-object p0, p0, Lorg/apache/poi/ss/formula/a;->b:Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;

    invoke-static {v2, p0, v0, v1, p1}, Lorg/apache/poi/ss/formula/EvaluationCache;->a(Lorg/apache/poi/ss/formula/EvaluationCache;Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;IILorg/apache/poi/ss/formula/FormulaCellCacheEntry;)V

    return-void
.end method
