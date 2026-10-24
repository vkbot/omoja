.class public final Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field public static final EMPTY:Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;


# instance fields
.field private final _evaluators:[Lorg/apache/poi/ss/formula/WorkbookEvaluator;

.field private final _evaluatorsByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/formula/WorkbookEvaluator;",
            ">;"
        }
    .end annotation
.end field

.field private _unhooked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->EMPTY:Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->_evaluatorsByName:Ljava/util/Map;

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    iput-object v0, p0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->_evaluators:[Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;[Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/formula/WorkbookEvaluator;",
            ">;[",
            "Lorg/apache/poi/ss/formula/WorkbookEvaluator;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/IdentityHashMap;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 6
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Attempted to register same workbook under names \'"

    const-string p1, "\' and \'"

    .line 8
    invoke-static {p0, v3, p1}, Landroidx/activity/result/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 9
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "\'"

    .line 10
    invoke-static {p0, p1, p2}, La4/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    invoke-direct {p0, p2}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->unhookOldEnvironments([Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V

    .line 13
    invoke-static {p2, p0}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->hookNewEnvironment([Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->_unhooked:Z

    .line 14
    invoke-virtual {p2}, [Lorg/apache/poi/ss/formula/WorkbookEvaluator;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    iput-object p2, p0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->_evaluators:[Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    iput-object p1, p0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->_evaluatorsByName:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>([Ljava/lang/String;[Lorg/apache/poi/ss/formula/WorkbookEvaluator;I)V
    .locals 0

    .line 3
    invoke-static {p1, p2, p3}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->toUniqueMap([Ljava/lang/String;[Lorg/apache/poi/ss/formula/WorkbookEvaluator;I)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;-><init>(Ljava/util/Map;[Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V

    return-void
.end method

.method private static hookNewEnvironment([Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;)V
    .locals 6

    array-length v0, p0

    const/4 v1, 0x0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getEvaluationListener()Lorg/apache/poi/ss/formula/IEvaluationListener;

    move-result-object v2

    array-length v3, p0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p0, v4

    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getEvaluationListener()Lorg/apache/poi/ss/formula/IEvaluationListener;

    move-result-object v5

    if-ne v2, v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Workbook evaluators must all have the same evaluation listener"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v3, Lorg/apache/poi/ss/formula/EvaluationCache;

    invoke-direct {v3, v2}, Lorg/apache/poi/ss/formula/EvaluationCache;-><init>(Lorg/apache/poi/ss/formula/IEvaluationListener;)V

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    invoke-virtual {v2, p1, v3, v1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->attachToEnvironment(Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;Lorg/apache/poi/ss/formula/EvaluationCache;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static setup(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/formula/WorkbookEvaluator;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 17
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    .line 18
    new-instance v1, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    invoke-direct {v1, p0, v0}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;-><init>(Ljava/util/Map;[Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V

    return-void

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must provide at least one collaborating worbook"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setup([Ljava/lang/String;[Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    array-length v1, p1

    if-ne v1, v0, :cond_1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v1, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    invoke-direct {v1, p0, p1, v0}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;-><init>([Ljava/lang/String;[Lorg/apache/poi/ss/formula/WorkbookEvaluator;I)V

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must provide at least one collaborating worbook"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of workbook names is "

    const-string v2, " but number of evaluators is "

    .line 6
    invoke-static {v1, v0, v2}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 7
    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setupFormulaEvaluator(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/usermodel/FormulaEvaluator;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/usermodel/FormulaEvaluator;

    instance-of v3, v1, Lorg/apache/poi/ss/formula/WorkbookEvaluatorProvider;

    if-eqz v3, :cond_0

    check-cast v1, Lorg/apache/poi/ss/formula/WorkbookEvaluatorProvider;

    invoke-interface {v1}, Lorg/apache/poi/ss/formula/WorkbookEvaluatorProvider;->_getWorkbookEvaluator()Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Formula Evaluator "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " provides no WorkbookEvaluator access"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {v0}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->setup(Ljava/util/Map;)V

    return-void
.end method

.method private static toUniqueMap([Ljava/lang/String;[Lorg/apache/poi/ss/formula/WorkbookEvaluator;I)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/poi/ss/formula/WorkbookEvaluator;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/formula/WorkbookEvaluator;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    mul-int/lit8 v1, p2, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Duplicate workbook name \'"

    const-string p2, "\'"

    invoke-static {p1, v2, p2}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object v0
.end method

.method private unhook()V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->_evaluators:[Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    return-void

    :cond_0
    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->detachFromEnvironment()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->_unhooked:Z

    return-void
.end method

.method private unhookOldEnvironments([Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V
    .locals 4

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getEnvironment()Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p1

    new-array v0, p1, [Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :goto_1
    if-ge v1, p1, :cond_1

    aget-object p0, v0, v1

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->unhook()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public getWorkbookEvaluator(Ljava/lang/String;)Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .locals 2

    iget-boolean v0, p0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->_unhooked:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->_evaluatorsByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Could not resolve external workbook name \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->_evaluators:[Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    array-length p1, p1

    const/4 v1, 0x1

    if-lt p1, v1, :cond_2

    const-string p1, " The following workbook names are valid: ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->_evaluatorsByName:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, p1, 0x1

    if-lez p1, :cond_0

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 p1, 0x27

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p1, v1

    goto :goto_0

    :cond_1
    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string p0, " Workbook environment has not been set up."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    new-instance p0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-object v0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This environment has been unhooked"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
