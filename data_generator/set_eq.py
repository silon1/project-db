if __name__ == '__main__':
    f = open('equipments.txt', 'r').read().lower().replace(' & ', '\n').splitlines()
    print(len(f), len(f:=(set(f))))
    for i in f:
        if len(i) > 40:
            print(f'ERROR: {i}')    
    open('equipments.txt', 'w').write('\n'.join(f))