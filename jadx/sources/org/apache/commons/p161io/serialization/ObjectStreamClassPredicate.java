package org.apache.commons.p161io.serialization;

import java.io.ObjectStreamClass;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Predicate;
import java.util.regex.Pattern;
import java.util.stream.Stream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class ObjectStreamClassPredicate implements Predicate<ObjectStreamClass> {
    private final List<ClassNameMatcher> acceptMatchers = new ArrayList();
    private final List<ClassNameMatcher> rejectMatchers = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ FullClassNameMatcher lambda$accept$0(Class cls) {
        return new FullClassNameMatcher(cls.getName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ FullClassNameMatcher lambda$reject$1(Class cls) {
        return new FullClassNameMatcher(cls.getName());
    }

    public ObjectStreamClassPredicate accept(Class<?>... clsArr) {
        Stream map = Stream.of((Object[]) clsArr).map(new C2923b(1));
        List<ClassNameMatcher> list = this.acceptMatchers;
        Objects.requireNonNull(list);
        map.forEach(new C2922a(list, 0));
        return this;
    }

    public ObjectStreamClassPredicate reject(Class<?>... clsArr) {
        Stream map = Stream.of((Object[]) clsArr).map(new C2923b(2));
        List<ClassNameMatcher> list = this.rejectMatchers;
        Objects.requireNonNull(list);
        map.forEach(new C2922a(list, 0));
        return this;
    }

    public boolean test(String str) {
        Iterator<ClassNameMatcher> it = this.rejectMatchers.iterator();
        while (it.hasNext()) {
            if (it.next().matches(str)) {
                return false;
            }
        }
        Iterator<ClassNameMatcher> it2 = this.acceptMatchers.iterator();
        while (it2.hasNext()) {
            if (it2.next().matches(str)) {
                return true;
            }
        }
        return false;
    }

    public ObjectStreamClassPredicate accept(ClassNameMatcher classNameMatcher) {
        this.acceptMatchers.add(classNameMatcher);
        return this;
    }

    public ObjectStreamClassPredicate reject(ClassNameMatcher classNameMatcher) {
        this.rejectMatchers.add(classNameMatcher);
        return this;
    }

    public ObjectStreamClassPredicate accept(Pattern pattern) {
        this.acceptMatchers.add(new RegexpClassNameMatcher(pattern));
        return this;
    }

    public ObjectStreamClassPredicate reject(Pattern pattern) {
        this.rejectMatchers.add(new RegexpClassNameMatcher(pattern));
        return this;
    }

    public ObjectStreamClassPredicate accept(String... strArr) {
        Stream map = Stream.of((Object[]) strArr).map(new C2923b(0));
        List<ClassNameMatcher> list = this.acceptMatchers;
        Objects.requireNonNull(list);
        map.forEach(new C2922a(list, 1));
        return this;
    }

    public ObjectStreamClassPredicate reject(String... strArr) {
        Stream map = Stream.of((Object[]) strArr).map(new C2923b(0));
        List<ClassNameMatcher> list = this.rejectMatchers;
        Objects.requireNonNull(list);
        map.forEach(new C2922a(list, 1));
        return this;
    }

    @Override // java.util.function.Predicate
    public boolean test(ObjectStreamClass objectStreamClass) {
        return test(objectStreamClass.getName());
    }
}
