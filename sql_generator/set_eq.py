if __name__ == '__main__':
    f = set(open('equipments.txt', 'r').read().replace(' & ', '\n').splitlines())
    open('equipments.txt', 'w').write('\n'.join(f))
    print(len(f))