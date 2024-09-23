<div class="col-md-12">
    <div class="page-header">
        <h1>LISTE DES CATÉGORIES</h1>
    </div>

    <table class="table table-bordered">
        <thead>
            <tr>
                <th>id</th>
                <th>name</th>
                <th>created_at</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($categories as $category): ?>
                <tr>
                    <td><?php echo $category['id']; ?></td>
                    <td><?php echo $category['name']; ?></td>
                    <td><?php echo $category['created_at']; ?></td>
                    <td>
                        <button type="button" class="btn btn-primary">Modifier</button>
                        <a href="categories/destroy/<?php echo $category['id']; ?>" class="btn btn-secondary">
                            Supprimer
                        </a>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>